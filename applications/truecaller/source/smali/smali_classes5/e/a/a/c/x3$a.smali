.class public final Le/a/a/c/x3$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/x3;-><init>(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/x3;


# direct methods
.method public constructor <init>(Le/a/a/c/x3;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/x3$a;->a:Le/a/a/c/x3;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/x3$a;->a:Le/a/a/c/x3;

    .line 2
    iget-boolean v0, p1, Le/a/a/c/x3;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/a/c/x3;->b:Le/a/a/c/w3$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/a/c/w3$a;->C()V

    :cond_0
    return-void
.end method
