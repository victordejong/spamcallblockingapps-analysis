.class public final Lw3/c/a/a/a/j/c$b;
.super Lw3/c/a/a/a/j/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/c/a/a/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw3/c/a/a/a/j/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->b:Z

    .line 3
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->d:Z

    const-string v0, "{"

    .line 4
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->e:Ljava/lang/String;

    const-string v0, "}"

    .line 5
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->f:Ljava/lang/String;

    const-string v0, "["

    .line 6
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    const-string v0, "]"

    .line 7
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    const-string v0, ","

    .line 8
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    const-string v0, ":"

    .line 9
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->g:Ljava/lang/String;

    const-string v0, "null"

    .line 10
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->l:Ljava/lang/String;

    const-string v0, "\"<"

    .line 11
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->o:Ljava/lang/String;

    const-string v0, ">\""

    .line 12
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->p:Ljava/lang/String;

    const-string v1, "\"<size="

    .line 13
    iput-object v1, p0, Lw3/c/a/a/a/j/c;->m:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->n:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/j/c;->w:Lw3/c/a/a/a/j/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p4, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lw3/c/a/a/a/j/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_0

    .line 2
    check-cast p3, Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public o(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "\""

    .line 1
    invoke-static {v0, p2, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lw3/c/a/a/a/j/c;->a:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Field names are mandatory when using JsonToStringStyle"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
