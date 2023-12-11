import React from 'react';
import Link from 'next/link';
import Image from 'next/image'
import SectionBorder from './sections';

// type buttonProps = {
//     text: string
//     icon: string
//     url: string
// }

/**
 * A list of navigation buttons enclosed in one box, seperated with horizontal lines
 * @param {Object} props Contains tags text, icon and link
 * @param {string[]} props.text Mandatory, text displayed in buttons
 * @param {string[]=} props.icon Icons displayed to the left of text
 * @param {string[]=} props.link Links to outside URLs or internal pages as filepaths, e.g. '/test/page'
 * @param {number} [props.selected=-1] Sets which button should be highlighted. Default of -1 means no highlight.
 * @param {string=} props.color Color of the box border
 * @returns 
 */
export default function NavButtons ({children, text, icon, link, selected=-1, color}) {
  let icons = icon
  if (icon === undefined) icons = []
  let links = link
  if (link === undefined) links = []

  const Lnk = ({children, link}) => {
    if (link === undefined || link == '') return <>{children}</>
    return <Link href={link}>{children}</Link>
  }
  
  const Img = ({children, image}) => {
    if (image === undefined || image == '') return <></>
    return <Image
      src ={image}
      height={0}
      width={0}
      sizes='100vw'
      style={{ width: 'auto', height: '100%' }}
      alt='Button icon'
    >{children}</Image>
  }

  const List = () => {
    const linkList = []
    if (!Array.isArray(text)) {
      return <></>
    }
    for (let i = 0; i < text.length; i++) {
      linkList.push( <div>
        <Lnk link={links[i]}>
          <Img image={icons[i]}/>
          <span style={{ backgroundColor: i == selected? 'yellow' : 'none'}}>{text[i]}</span>
        </Lnk>
        {i < text.length - 1 && <hr/>}
      </div>)
    }
    return linkList.map((el) => <>{el}</>)
  }

  let col = color
  if (col === undefined) col = '#000'

  return (
    <SectionBorder color={col}>
      <div style={{margin: '20px'}}>
        {children}
        <List/>
      </div>
    </SectionBorder>
  )
}