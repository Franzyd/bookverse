import styles from './css/sections.module.css'

export default function SectionBorder ({children, color}) {
  return (
    <section className={styles.sectionBorder} style={{ borderColor: color }}>{children}</section>
  );
};