.class public final Le/a/a/c/g/g$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g/g;-><init>(Ls1/w/f;Ls1/w/f;Ljava/lang/String;Le/a/a/k/a/a/d;Landroid/os/Handler;Landroid/content/ContentResolver;Le/a/p5/h0;Le/a/a/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g/g;


# direct methods
.method public constructor <init>(Le/a/a/c/g/g;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/g/g$a;->a:Le/a/a/c/g/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object v0, p0, Le/a/a/c/g/g$a;->a:Le/a/a/c/g/g;

    new-instance v3, Le/a/a/c/g/g$a$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/a/c/g/g$a$a;-><init>(Le/a/a/c/g/g$a;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
