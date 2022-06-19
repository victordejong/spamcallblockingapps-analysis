.class public final Ls1/a/a/a/v0/i/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/i/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/i/b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/i/b$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/i/b$b;->a:Ls1/a/a/a/v0/i/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/i/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "classifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/b/w0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    const-string v0, "classifier.name"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ls1/a/a/a/v0/i/c;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ls1/a/a/a/v0/b/e;

    if-nez v0, :cond_1

    const-string p1, "$this$asReversed"

    .line 6
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ls1/u/d0;

    invoke-direct {p1, p2}, Ls1/u/d0;-><init>(Ljava/util/List;)V

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->R2(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
