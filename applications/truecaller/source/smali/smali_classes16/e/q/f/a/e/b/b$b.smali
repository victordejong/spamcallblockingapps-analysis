.class public Le/q/f/a/e/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/f/a/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Le/q/f/a/e/b/a;

.field public b:Le/q/f/a/e/d/b;


# direct methods
.method public constructor <init>(Le/q/f/a/e/b/a;Le/q/f/a/e/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/e/b/b$b;->a:Le/q/f/a/e/b/a;

    .line 3
    iput-object p2, p0, Le/q/f/a/e/b/b$b;->b:Le/q/f/a/e/d/b;

    return-void
.end method
