.class public Lp3/a/n1/e0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0;->c(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Lp3/a/n1/e0;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$k;->b:Lp3/a/n1/e0;

    iput-object p2, p0, Lp3/a/n1/e0$k;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$k;->b:Lp3/a/n1/e0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    .line 3
    iget-object v1, p0, Lp3/a/n1/e0$k;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lp3/a/n1/s2;->c(Ljava/io/InputStream;)V

    return-void
.end method
