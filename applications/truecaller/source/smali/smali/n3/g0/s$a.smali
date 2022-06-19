.class public Ln3/g0/s$a;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/s;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/g0/m;


# direct methods
.method public constructor <init>(Ln3/g0/s;Ln3/g0/m;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/g0/s$a;->a:Ln3/g0/m;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/s$a;->a:Ln3/g0/m;

    invoke-virtual {v0}, Ln3/g0/m;->B()V

    .line 2
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method
