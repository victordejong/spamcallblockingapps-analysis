.class public final Le/a/a/f/f$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/f/f;-><init>(Le/a/r2/j;Lcom/truecaller/messaging/data/types/ImGroupInfo;Le/a/r2/f;Le/a/p5/c0;Le/a/r2/f;Le/a/a/k/a/a/q;Le/a/r2/f;Le/a/r2/f;Le/a/q2/a;Le/a/a/i0;Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/f/f;


# direct methods
.method public constructor <init>(Le/a/a/f/f;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/f/f$a;->a:Le/a/a/f/f;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/f/f$a;->a:Le/a/a/f/f;

    .line 2
    invoke-virtual {p1}, Le/a/a/f/f;->Jj()V

    return-void
.end method
