.class public final Le/a/d0/a/x$b;
.super Le/a/d0/a/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/callerid/window/InfoLineStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d0/a/x;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/truecaller/callerid/window/InfoLineStyle;->NORMAL:Lcom/truecaller/callerid/window/InfoLineStyle;

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const-string v0, "text"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Le/a/d0/a/x;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d0/a/x$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d0/a/x$b;

    iget-object v0, p0, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    iget-object p1, p1, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Regular(text="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d0/a/x$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d0/a/x$b;->b:Lcom/truecaller/callerid/window/InfoLineStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
