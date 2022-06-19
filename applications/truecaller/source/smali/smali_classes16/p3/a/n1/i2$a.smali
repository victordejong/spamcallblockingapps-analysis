.class public Lp3/a/n1/i2$a;
.super Lp3/a/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->r(I)Lp3/a/n1/i2$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/j;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Lp3/a/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp3/a/n1/i2$a;->a:Lp3/a/j;

    invoke-direct {p0}, Lp3/a/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/j$b;Lp3/a/o0;)Lp3/a/j;
    .locals 0

    .line 1
    iget-object p1, p0, Lp3/a/n1/i2$a;->a:Lp3/a/j;

    return-object p1
.end method
