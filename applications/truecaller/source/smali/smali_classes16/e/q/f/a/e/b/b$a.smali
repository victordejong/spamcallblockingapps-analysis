.class public Le/q/f/a/e/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/q/f/a/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/f/a/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/q/f/a/e/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/q/f/a/e/b/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/q/f/a/e/b/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
