import styles from './css/buttons.module.css'

export default function SectionBorder (props) { // color
  return (
    <section className={styles.sectionBorder} style={{ borderColor: props.color }}>{props.children}</section>
  );
};