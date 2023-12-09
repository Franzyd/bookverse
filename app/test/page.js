import NavButtons from "@/components/buttons"

const text = ['Hello']
const link = ['/test']

export default function Home() {
    return (
        <NavButtons text={text} link={link} color="#F00"/>
    )
}