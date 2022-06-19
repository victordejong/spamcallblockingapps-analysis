.class public final Ln3/h/a/a$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final c:Ln3/h/a/a$i;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Ln3/h/a/a$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/h/a/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/h/a/a$i;-><init>(Z)V

    sput-object v0, Ln3/h/a/a$i;->c:Ln3/h/a/a$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ln3/h/a/a;->f:Ln3/h/a/a$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ln3/h/a/a$b;->e(Ln3/h/a/a$i;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
