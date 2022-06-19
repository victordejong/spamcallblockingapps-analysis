.class final Lkotlin/u/c$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/u/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lkotlin/r;",
        "Lkotlin/u/g$b;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:[Lkotlin/u/g;

.field final synthetic g:Lkotlin/w/c/o;


# direct methods
.method constructor <init>([Lkotlin/u/g;Lkotlin/w/c/o;)V
    .locals 0

    iput-object p1, p0, Lkotlin/u/c$c;->f:[Lkotlin/u/g;

    iput-object p2, p0, Lkotlin/u/c$c;->g:Lkotlin/w/c/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/r;Lkotlin/u/g$b;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lkotlin/u/c$c;->f:[Lkotlin/u/g;

    iget-object v0, p0, Lkotlin/u/c$c;->g:Lkotlin/w/c/o;

    iget v1, v0, Lkotlin/w/c/o;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lkotlin/w/c/o;->f:I

    aput-object p2, p1, v1

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/r;

    check-cast p2, Lkotlin/u/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/u/c$c;->a(Lkotlin/r;Lkotlin/u/g$b;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
