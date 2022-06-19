.class public abstract Lcom/truecaller/messaging/data/types/Entity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/Entity$a;
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:Lcom/truecaller/messaging/data/types/Entity$a;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/truecaller/messaging/data/types/Entity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/Entity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-string v0, "text/x-vcard"

    const-string v1, "text/vcard"

    const-string v2, "text/directory"

    const-string v3, "text/directory; profile=vcard"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/truecaller/messaging/data/types/Entity;->d:[Ljava/lang/String;

    const-string v0, "image/gif"

    const-string v1, "image/jpeg"

    const-string v2, "image/jpg"

    const-string v3, "image/png"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/truecaller/messaging/data/types/Entity;->e:[Ljava/lang/String;

    const-string v0, "video/3gpp"

    const-string v1, "video/mp4"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/truecaller/messaging/data/types/Entity;->f:[Ljava/lang/String;

    const-string v0, "application/vnd.truecaller.linkpreview"

    const-string v1, "application/vnd.truecaller.linkpreview.media"

    const-string v2, "application/vnd.truecaller.linkpreview.playable"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/truecaller/messaging/data/types/Entity;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 2
    iput-object p3, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    return-void
.end method

.method public static final a(JLjava/lang/String;ILjava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;
    .locals 24

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const v23, 0x3fff0

    invoke-static/range {v0 .. v23}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;
    .locals 24

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const v23, 0x3fff5

    invoke-static/range {v0 .. v23}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "tenor/gif"

    .line 2
    invoke-static {v1, p0, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/gif"

    invoke-static {v1, p0, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final m(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image/"

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final p(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "tenor/gif"

    .line 2
    invoke-static {v1, p0, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final s(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "text/plain"

    .line 2
    invoke-static {v1, p0, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/html"

    invoke-static {v1, p0, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final v(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    invoke-static {p0, v5, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static final x(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "contentType"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video/"

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract c(Landroid/content/ContentValues;)V
.end method

.method public abstract d()I
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/truecaller/messaging/data/types/Entity;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    check-cast p1, Lcom/truecaller/messaging/data/types/Entity;

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    iget p1, p1, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    add-int/2addr v1, v0

    return v1
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract n()Z
.end method

.method public abstract o()Z
.end method

.method public abstract r()Z
.end method

.method public abstract t()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{ id : "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    const-string v2, " }"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract w()Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
