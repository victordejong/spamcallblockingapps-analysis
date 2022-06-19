.class public Lp3/a/q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/q$a;->J(Lp3/a/q$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/q$a;


# direct methods
.method public constructor <init>(Lp3/a/q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/q$a$a;->a:Lp3/a/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q$a$a;->a:Lp3/a/q$a;

    invoke-virtual {p1}, Lp3/a/q;->j()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/a/q$a;->K(Ljava/lang/Throwable;)Z

    return-void
.end method
