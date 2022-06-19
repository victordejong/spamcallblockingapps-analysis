.class public Lp3/a/n1/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/g;->k(Lp3/a/n1/e2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/e2;


# direct methods
.method public constructor <init>(Lp3/a/n1/g;Lp3/a/n1/e2;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp3/a/n1/g$c;->a:Lp3/a/n1/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/g$c;->a:Lp3/a/n1/e2;

    invoke-interface {v0}, Lp3/a/n1/e2;->close()V

    return-void
.end method
