package com.baizhi.entity;

import java.io.Serializable;
import java.util.Date;

public class Chapter implements Serializable {
    private String id;

    private String title;

    private String url;

    private Double size;

    private String duration;

    private Date createtime;

    private String pid;

    private String spareone;

    private String sparetwo;

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration == null ? null : duration.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
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
        Chapter other = (Chapter) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getUrl() == null ? other.getUrl() == null : this.getUrl().equals(other.getUrl()))
            && (this.getSize() == null ? other.getSize() == null : this.getSize().equals(other.getSize()))
            && (this.getDuration() == null ? other.getDuration() == null : this.getDuration().equals(other.getDuration()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getPid() == null ? other.getPid() == null : this.getPid().equals(other.getPid()))
            && (this.getSpareone() == null ? other.getSpareone() == null : this.getSpareone().equals(other.getSpareone()))
            && (this.getSparetwo() == null ? other.getSparetwo() == null : this.getSparetwo().equals(other.getSparetwo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getUrl() == null) ? 0 : getUrl().hashCode());
        result = prime * result + ((getSize() == null) ? 0 : getSize().hashCode());
        result = prime * result + ((getDuration() == null) ? 0 : getDuration().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getPid() == null) ? 0 : getPid().hashCode());
        result = prime * result + ((getSpareone() == null) ? 0 : getSpareone().hashCode());
        result = prime * result + ((getSparetwo() == null) ? 0 : getSparetwo().hashCode());
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
        sb.append(", url=").append(url);
        sb.append(", size=").append(size);
        sb.append(", duration=").append(duration);
        sb.append(", createtime=").append(createtime);
        sb.append(", pid=").append(pid);
        sb.append(", spareone=").append(spareone);
        sb.append(", sparetwo=").append(sparetwo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}