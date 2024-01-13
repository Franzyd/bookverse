import SectionBorder from '@/components/sections';
import NavButtons from '@/components/buttons';
import * as BookData from '@/components/biblioteka/BibliotekaData';
import styles from './page.module.css'
import Image from 'next/image';
import { promises as fs } from 'fs';

// function BookOptions() {
//     const [isHidden, setIsHidden] = useState(true)

//     return (<div className={isHidden ? 'hidden' : undefined}>

//     </div>)
// }

export default async function Biblioteka() { //div styling for now, later change global.css
    const file = await fs.readFile(process.cwd() + '/app/biblioteka/books.json', 'utf-8')
    const data = JSON.parse(file)

    return (<div className={styles.pageBody}>
        <nav className={styles.navBar}>
            <NavButtons text={BookData.zaloguj.text}/>
            <div className={styles.emptySpace}/>
            <h1>Menu</h1>
            <NavButtons text={BookData.nawigacja.text} link={BookData.nawigacja.link} selected={1}/>
        </nav>
        <main className={styles.mainContent}>
            <h1>Czytane</h1>
            <div className={styles.booksRow}>
                {data.map(function(obj, key) {
                    // isHidden = true
                    // const toggleHide = () => {
                    //     isHidden = !isHidden
                    // }
                    return (
                        <article className={styles.book} key={key}>
                            <div className={styles.bookCover}>
                                <SectionBorder height='200px' width='125px'>
                                    <div className={styles.bookImage}>
                                        <Image src={obj.coverPath} width={0} height={0} sizes="100vw" style={{width: 'auto', height: '100%',  alignSelf: 'center'}} alt={obj.title}/>
                                    </div>
                                </SectionBorder>
                                <div className={styles.bookMenu}>
                                    <SectionBorder height='100%'>
                                        <div className={styles.bookMenuItems}>
                                            <p>Informacje</p>
                                            <p>Rozpocznij Czytanie</p>
                                            <p>Usuń z biblioteki</p>
                                        </div>
                                    </SectionBorder>
                                </div>
                            </div>
                            <span>{obj.author}</span>
                            <h4>{obj.title}</h4>
                        </article>
                    )
                })}
            </div>
            <hr/>
            <h1>Przeczytane</h1>
            <div className={styles.booksRow}>
                <article className={styles.book}>
                    <SectionBorder>
                        <div className={styles.bookCover}>Book</div>
                    </SectionBorder>
                    <h4>BookTitle</h4>
                </article>
                <article className={styles.book}>
                    <SectionBorder>
                        <div className={styles.bookCover}>Book</div>
                    </SectionBorder>
                    <h4>BookTitle</h4>
                </article>
            </div>
        </main>
    </div>)
}