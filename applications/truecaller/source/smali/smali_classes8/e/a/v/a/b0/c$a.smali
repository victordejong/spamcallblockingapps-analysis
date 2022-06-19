.class public final Le/a/v/a/b0/c$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b0/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/v/p/a;Le/a/o5/b0;Le/a/p5/c0;Le/a/p5/h0;Le/a/e4/b0;Landroid/content/ContentResolver;Landroid/os/Handler;Le/a/v/a/z/a;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/b0/c;


# direct methods
.method public constructor <init>(Le/a/v/a/b0/c;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/b0/c$a;->a:Le/a/v/a/b0/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/v/a/b0/c$a;->a:Le/a/v/a/b0/c;

    .line 2
    invoke-virtual {p1}, Le/a/v/a/b0/c;->Jj()V

    return-void
.end method
