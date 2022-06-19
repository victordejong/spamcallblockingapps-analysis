.class public final Le/a/a/h/i$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;-><init>(Lcom/truecaller/messaging/data/types/Conversation;Le/a/r2/j;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Le/a/a/k/a/a/q;Le/a/q2/a;Le/a/r2/f;Le/a/a/i0;Le/a/p5/c0;Le/a/a/n/h;Ls1/w/f;Le/a/u3/g;Le/a/a/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/i;


# direct methods
.method public constructor <init>(Le/a/a/h/i;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/h/i$b;->a:Le/a/a/h/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/h/i$b;->a:Le/a/a/h/i;

    .line 2
    invoke-virtual {p1}, Le/a/a/h/i;->Jj()V

    return-void
.end method
