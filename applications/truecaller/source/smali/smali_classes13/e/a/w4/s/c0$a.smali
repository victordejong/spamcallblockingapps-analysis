.class public Le/a/w4/s/c0$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/s/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public constructor <init>(Le/a/w4/s/c0;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/w4/s/c0$a;->a:Le/a/w4/s/c0;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/w4/s/c0$a;->a:Le/a/w4/s/c0;

    .line 2
    sget v0, Le/a/w4/s/c0;->x:I

    .line 3
    invoke-virtual {p1}, Le/a/w4/s/c0;->dB()V

    return-void
.end method
