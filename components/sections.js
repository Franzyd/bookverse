import styles from './css/sections.module.css'

export default function SectionBorder ({children, color, height, width}) {
  if (color === undefined) color = "#000"
  if (height === undefined) height = "auto"
  if (width === undefined) width = "auto"
  return (
    <section className={styles.sectionBorder} style={{ borderColor: color, height: height, width: width }}>{children}</section>
  );
};