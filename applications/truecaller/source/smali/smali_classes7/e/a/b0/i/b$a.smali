.class public Le/a/b0/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b0/i/b;


# direct methods
.method public constructor <init>(Le/a/b0/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b0/i/b$a;->a:Le/a/b0/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/i/b$a;->a:Le/a/b0/i/b;

    invoke-virtual {v0}, Le/a/b0/i/b;->a()V

    return-void
.end method
