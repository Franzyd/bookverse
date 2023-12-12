import SectionBorder from '@/components/sections';
import NavButtons from '@/components/buttons';
import styles from './page.module.css'

const zaloguj = { text: ['Zaloguj'] }
const nawigacja = { text: [
    'Strona główna',
    'Biblioteka',
    'Harmonogram',
    'Znajomi',
    'Klub dyskusyjny',
    'Schowek',
    'Ustawienia'
], link: [
    '/',
    '/biblioteka',
    '', '', '', '', ''
]}

export default function Biblioteka() { //div styling for now, later change global.css
    return (<div className={styles.pageBody}> 
        <nav className={styles.navBar}>
            <NavButtons text={zaloguj.text}/>
            <div className={styles.emptySpace}/>
            <h1>Menu</h1>
            <NavButtons text={nawigacja.text} link={nawigacja.link} selected={1}/>
        </nav>
        <main className={styles.mainContent}>
            <h1>Czytane</h1>
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