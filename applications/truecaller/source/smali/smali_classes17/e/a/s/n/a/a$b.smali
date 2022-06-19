.class public final Le/a/s/n/a/a$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/n/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/n/a/a;


# direct methods
.method public constructor <init>(Le/a/s/n/a/a;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/s/n/a/a$b;->a:Le/a/s/n/a/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/s/n/a/a$b;->a:Le/a/s/n/a/a;

    .line 2
    iget-object p1, p1, Le/a/s/n/a/a;->b:Le/a/s/n/a/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/s/n/a/g;->Kc()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
