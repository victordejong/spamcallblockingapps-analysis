.class public final Ls1/a/a/a/w0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/w0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w0/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/w0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w0/c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/w0/d;

    sget-object v1, Ls1/a/a/a/w0/c;->f:Ls1/a/a/a/w0/c;

    invoke-direct {v0, v1}, Ls1/a/a/a/w0/d;-><init>(Ls1/a/a/a/w0/c;)V

    sput-object v0, Ls1/a/a/a/w0/d;->b:Ls1/a/a/a/w0/d;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/w0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/w0/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/w0/d;->a:Ls1/a/a/a/w0/c;

    return-void
.end method
