.class public final Ls1/a/a/a/v0/e/c$a;
.super Ls1/a/a/a/v0/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/b<",
        "Ls1/a/a/a/v0/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/c;

    .line 2
    invoke-direct {v0, p1, p2}, Ls1/a/a/a/v0/e/c;-><init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)V

    return-object v0
.end method
