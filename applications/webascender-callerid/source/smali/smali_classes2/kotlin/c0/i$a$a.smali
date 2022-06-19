.class final Lkotlin/c0/i$a$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c0/i$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/c0/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/c0/i$a;


# direct methods
.method constructor <init>(Lkotlin/c0/i$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/c0/i$a$a;->f:Lkotlin/c0/i$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/c0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/c0/i$a$a;->f:Lkotlin/c0/i$a;

    invoke-virtual {v0, p1}, Lkotlin/c0/i$a;->get(I)Lkotlin/c0/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/c0/i$a$a;->a(I)Lkotlin/c0/f;

    move-result-object p1

    return-object p1
.end method
