.class public final Ln3/z/g1$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1$g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g1$g$b;


# direct methods
.method public constructor <init>(Ln3/z/g1$g$b;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$g$b$a;->a:Ln3/z/g1$g$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    .line 2
    iget-object p2, p0, Ln3/z/g1$g$b$a;->a:Ln3/z/g1$g$b;

    iget-object p2, p2, Ln3/z/g1$g$b;->g:Lq3/a/w2/j;

    invoke-interface {p2, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
