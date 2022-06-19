.class public Lp3/a/n1/m1$p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$p;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$p;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p$b;->a:Lp3/a/n1/m1$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p$b;->a:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    invoke-virtual {v0}, Lp3/a/n1/m1;->l()V

    return-void
.end method
