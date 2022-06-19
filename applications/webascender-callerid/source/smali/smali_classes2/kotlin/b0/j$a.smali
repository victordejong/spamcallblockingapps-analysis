.class public final Lkotlin/b0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/w/c/v/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/b0/j;->c(Lkotlin/b0/d;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lkotlin/w/c/v/a;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/b0/d;


# direct methods
.method public constructor <init>(Lkotlin/b0/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/b0/j$a;->f:Lkotlin/b0/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/b0/j$a;->f:Lkotlin/b0/d;

    invoke-interface {v0}, Lkotlin/b0/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
