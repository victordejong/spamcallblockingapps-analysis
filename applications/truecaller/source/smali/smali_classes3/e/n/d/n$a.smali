.class public Le/n/d/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/d/n;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/n/d/n;


# direct methods
.method public constructor <init>(Le/n/d/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/n$a;->a:Le/n/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/d/n$a;->a:Le/n/d/n;

    .line 2
    invoke-virtual {v0}, Le/n/d/n;->a()V

    return-void
.end method
