.class public final Le/a/a/c/n/w$f;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/n/w;-><init>(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/r2/j;Ls1/w/f;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Le/a/r2/f;Le/a/a/c/w3;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/n/w;


# direct methods
.method public constructor <init>(Le/a/a/c/n/w;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/n/w$f;->a:Le/a/a/c/n/w;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/c/n/w$f;->a:Le/a/a/c/n/w;

    .line 2
    invoke-virtual {p1}, Le/a/a/c/n/w;->Ij()V

    return-void
.end method
