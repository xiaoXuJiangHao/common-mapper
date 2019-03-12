package com.baizhi.entity;

import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable {
    private String id;

    private String title;

    private String score;

    private String brodcast;

    private String author;

    private String brief;

    private Date publictime;

    private String count;

    private String coverimg;

    private String status;

    private String spareone;

    private String sparetwo;

    private String sparethree;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score == null ? null : score.trim();
    }

    public String getBrodcast() {
        return brodcast;
    }

    public void setBrodcast(String brodcast) {
        this.brodcast = brodcast == null ? null : brodcast.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief == null ? null : brief.trim();
    }

    public Date getPublictime() {
        return publictime;
    }

    public void setPublictime(Date publictime) {
        this.publictime = publictime;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count == null ? null : count.trim();
    }

    public String getCoverimg() {
        return coverimg;
    }

    public void setCoverimg(String coverimg) {
        this.coverimg = coverimg == null ? null : coverimg.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getSpareone() {
        return spareone;
    }

    public void setSpareone(String spareone) {
        this.spareone = spareone == null ? null : spareone.trim();
    }

    public String getSparetwo() {
        return sparetwo;
    }

    public void setSparetwo(String sparetwo) {
        this.sparetwo = sparetwo == null ? null : sparetwo.trim();
    }

    public String getSparethree() {
        return sparethree;
    }

    public void setSparethree(String sparethree) {
        this.sparethree = sparethree == null ? null : sparethree.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Album other = (Album) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getScore() == null ? other.getScore() == null : this.getScore().equals(other.getScore()))
            && (this.getBrodcast() == null ? other.getBrodcast() == null : this.getBrodcast().equals(other.getBrodcast()))
            && (this.getAuthor() == null ? other.getAuthor() == null : this.getAuthor().equals(other.getAuthor()))
            && (this.getBrief() == null ? other.getBrief() == null : this.getBrief().equals(other.getBrief()))
            && (this.getPublictime() == null ? other.getPublictime() == null : this.getPublictime().equals(other.getPublictime()))
            && (this.getCount() == null ? other.getCount() == null : this.getCount().equals(other.getCount()))
            && (this.getCoverimg() == null ? other.getCoverimg() == null : this.getCoverimg().equals(other.getCoverimg()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getSpareone() == null ? other.getSpareone() == null : this.getSpareone().equals(other.getSpareone()))
            && (this.getSparetwo() == null ? other.getSparetwo() == null : this.getSparetwo().equals(other.getSparetwo()))
            && (this.getSparethree() == null ? other.getSparethree() == null : this.getSparethree().equals(other.getSparethree()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getScore() == null) ? 0 : getScore().hashCode());
        result = prime * result + ((getBrodcast() == null) ? 0 : getBrodcast().hashCode());
        result = prime * result + ((getAuthor() == null) ? 0 : getAuthor().hashCode());
        result = prime * result + ((getBrief() == null) ? 0 : getBrief().hashCode());
        result = prime * result + ((getPublictime() == null) ? 0 : getPublictime().hashCode());
        result = prime * result + ((getCount() == null) ? 0 : getCount().hashCode());
        result = prime * result + ((getCoverimg() == null) ? 0 : getCoverimg().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getSpareone() == null) ? 0 : getSpareone().hashCode());
        result = prime * result + ((getSparetwo() == null) ? 0 : getSparetwo().hashCode());
        result = prime * result + ((getSparethree() == null) ? 0 : getSparethree().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", score=").append(score);
        sb.append(", brodcast=").append(brodcast);
        sb.append(", author=").append(author);
        sb.append(", brief=").append(brief);
        sb.append(", publictime=").append(publictime);
        sb.append(", count=").append(count);
        sb.append(", coverimg=").append(coverimg);
        sb.append(", status=").append(status);
        sb.append(", spareone=").append(spareone);
        sb.append(", sparetwo=").append(sparetwo);
        sb.append(", sparethree=").append(sparethree);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}