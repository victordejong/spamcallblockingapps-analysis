.class public final Lp3/a/o1/o/m/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lv3/i;

.field public static final e:Lv3/i;

.field public static final f:Lv3/i;

.field public static final g:Lv3/i;

.field public static final h:Lv3/i;


# instance fields
.field public final a:Lv3/i;

.field public final b:Lv3/i;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 1
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/d;->d:Lv3/i;

    const-string v0, ":method"

    .line 2
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/d;->e:Lv3/i;

    const-string v0, ":path"

    .line 3
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/d;->f:Lv3/i;

    const-string v0, ":scheme"

    .line 4
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/d;->g:Lv3/i;

    const-string v0, ":authority"

    .line 5
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/d;->h:Lv3/i;

    const-string v0, ":host"

    .line 6
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    const-string v0, ":version"

    .line 7
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    return-void
.end method

.method public constructor <init>(Lv3/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    return-void
.end method

.method public constructor <init>(Lv3/i;Lv3/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lp3/a/o1/o/m/d;->a:Lv3/i;

    .line 4
    iput-object p2, p0, Lp3/a/o1/o/m/d;->b:Lv3/i;

    .line 5
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lv3/i;->f()I

    move-result p2

    add-int/2addr p1, p2

    .line 6
    iput p1, p0, Lp3/a/o1/o/m/d;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/o1/o/m/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp3/a/o1/o/m/d;

    .line 3
    iget-object v0, p0, Lp3/a/o1/o/m/d;->a:Lv3/i;

    iget-object v2, p1, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-virtual {v0, v2}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/o1/o/m/d;->b:Lv3/i;

    iget-object p1, p1, Lp3/a/o1/o/m/d;->b:Lv3/i;

    .line 4
    invoke-virtual {v0, p1}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-virtual {v0}, Lv3/i;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lp3/a/o1/o/m/d;->b:Lv3/i;

    invoke-virtual {v1}, Lv3/i;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-virtual {v1}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/o1/o/m/d;->b:Lv3/i;

    invoke-virtual {v1}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
