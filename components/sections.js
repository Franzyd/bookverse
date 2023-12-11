import styles from './css/sections.module.css'

export default function SectionBorder ({children, color}) {
  if (color === undefined) color = "#000"
  return (
    <section className={styles.sectionBorder} style={{ borderColor: color }}>{children}</section>
  );
};