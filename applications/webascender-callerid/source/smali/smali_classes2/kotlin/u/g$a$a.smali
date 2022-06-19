.class final Lkotlin/u/g$a$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/u/g$a;->a(Lkotlin/u/g;Lkotlin/u/g;)Lkotlin/u/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lkotlin/u/g;",
        "Lkotlin/u/g$b;",
        "Lkotlin/u/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkotlin/u/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/u/g$a$a;

    invoke-direct {v0}, Lkotlin/u/g$a$a;-><init>()V

    sput-object v0, Lkotlin/u/g$a$a;->f:Lkotlin/u/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/u/g;Lkotlin/u/g$b;)Lkotlin/u/g;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lkotlin/u/g$b;->getKey()Lkotlin/u/g$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/u/g;->minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlin/u/h;->f:Lkotlin/u/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    invoke-interface {p1, v1}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v2

    check-cast v2, Lkotlin/u/e;

    if-nez v2, :cond_1

    .line 4
    new-instance v0, Lkotlin/u/c;

    invoke-direct {v0, p1, p2}, Lkotlin/u/c;-><init>(Lkotlin/u/g;Lkotlin/u/g$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Lkotlin/u/g;->minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Lkotlin/u/c;

    invoke-direct {p1, p2, v2}, Lkotlin/u/c;-><init>(Lkotlin/u/g;Lkotlin/u/g$b;)V

    move-object p2, p1

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Lkotlin/u/c;

    new-instance v1, Lkotlin/u/c;

    invoke-direct {v1, p1, p2}, Lkotlin/u/c;-><init>(Lkotlin/u/g;Lkotlin/u/g$b;)V

    invoke-direct {v0, v1, v2}, Lkotlin/u/c;-><init>(Lkotlin/u/g;Lkotlin/u/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/u/g;

    check-cast p2, Lkotlin/u/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/u/g$a$a;->a(Lkotlin/u/g;Lkotlin/u/g$b;)Lkotlin/u/g;

    move-result-object p1

    return-object p1
.end method
