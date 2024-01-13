import { promises as fs } from 'fs';

export async function BibliotekaBooks()
{
    const file = await fs.readFile(process.cwd() + '/app/biblioteka/books.json', 'utf-8')
    return JSON.parse(file)
}

export const zaloguj = { text: ['Zaloguj'] }
export const nawigacja = { text: [
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

export class Ksiazka {
    constructor(title, author, cover) {
        this.title = title;
        this.author = author;
        this.cover = cover;
    }
}

export const czytane = [
    new Ksiazka("Fahrenheit 451", "Ray Bradbury", "/Fahrenheit 451.webp")
]