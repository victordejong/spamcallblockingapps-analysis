.class public final Li/c/z/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/y/c<",
        "Li/c/w/b;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Li/c/w/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/z/j/e;->f:Li/c/w/b;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Li/c/w/b;

    invoke-virtual {p0, p1}, Li/c/z/j/e;->a(Li/c/w/b;)V

    return-void
.end method
