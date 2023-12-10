import NavButtons from "@/components/buttons"

const text = ['Hello', 'Cześć']
const link = ['/test', '/test']

export default function Home() {
    return (
        <NavButtons text={text} link={link} color="#F00"/>
    )
}