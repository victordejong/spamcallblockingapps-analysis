.class public final Le/m/a/c/l1/q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Le/m/a/c/l1/q;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Le/m/a/c/l1/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/q$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    return-void
.end method
