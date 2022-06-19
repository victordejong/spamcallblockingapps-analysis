.class public final Lkotlin/b0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/b0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/b0/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/b0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/b0/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/b0/d;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/b0/d<",
            "+TT;>;",
            "Lkotlin/w/b/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/b0/k;->a:Lkotlin/b0/d;

    iput-object p2, p0, Lkotlin/b0/k;->b:Lkotlin/w/b/l;

    return-void
.end method

.method public static final synthetic b(Lkotlin/b0/k;)Lkotlin/b0/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/b0/k;->a:Lkotlin/b0/d;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/b0/k;)Lkotlin/w/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/b0/k;->b:Lkotlin/w/b/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/b0/k$a;

    invoke-direct {v0, p0}, Lkotlin/b0/k$a;-><init>(Lkotlin/b0/k;)V

    return-object v0
.end method
