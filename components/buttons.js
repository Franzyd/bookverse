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
 * @param {string=} props.color Color of the box border
 * @returns 
 */
export default function NavButtons (props) {
  let icons = props.icon
  if (props.icon === undefined) icons = []
  const Lnk = (link) => {
    if (link === undefined) return <></>
    return <Link href={link}/>
  }
  
  const Img = (image) => {
    if (image === undefined) return <></>
    return <Image
      src ={image}
      height={0}
      width={0}
      sizes='100vw'
      style={{ width: 'auto', height: '100%' }}
      alt='Button icon'
    />
  }

  const List = () => {
    const linkList = []
    if (!Array.isArray(props.text)) {
      return <></>
    }
    for (let i = 0; i < props.text.length; i++) {
      linkList.push( <>
        <Lnk link={props.text[i]}>
          <Img image={icons[i]}/>
          <span>{props.text}</span>
        </Lnk>
        {i < props.text.length - 1 && <hr/>}
      </>)
    }
    return linkList.map(el => el)
  }

  let col = props.color
  if (col === undefined) col = '#000'

  return (
    <SectionBorder color={col}>
      Test
      <List/>
    </SectionBorder>
  )
}