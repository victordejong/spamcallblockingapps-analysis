.class public final enum Le/m/f/a/j$a$c;
.super Le/m/f/a/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le/m/f/a/j$a;-><init>(Ljava/lang/String;ILe/m/f/a/i;)V

    return-void
.end method


# virtual methods
.method public a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p3, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p3, p1, v1}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, v0, p3}, Le/m/f/a/g;->c(Le/m/f/a/o;Ljava/lang/String;Le/m/f/a/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, v0}, Le/m/f/a/g;->b(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1, p3}, Le/m/f/a/g;->f(Le/m/f/a/o;Le/m/f/a/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Le/m/f/a/j$a$c$a;

    invoke-direct {v0, p0}, Le/m/f/a/j$a$c$a;-><init>(Le/m/f/a/j$a$c;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Le/m/f/a/g;->a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g$a;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
