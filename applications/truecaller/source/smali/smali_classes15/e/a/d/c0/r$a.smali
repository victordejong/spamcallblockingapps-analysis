.class public Le/a/d/c0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/d/c0/d0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c0/r;


# direct methods
.method public constructor <init>(Le/a/d/c0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/c0/r$a;->a:Le/a/d/c0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/r$a;->a:Le/a/d/c0/r;

    .line 2
    iget-object v0, v0, Le/a/d/c0/r;->c:Lq3/a/x2/a1;

    .line 3
    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
