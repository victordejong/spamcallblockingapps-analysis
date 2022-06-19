.class public Landroidx/fragment/app/FragmentManager$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/r/a/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Ln3/v/u;

.field public final b:Ln3/r/a/b0;

.field public final c:Ln3/v/z;


# direct methods
.method public constructor <init>(Ln3/v/u;Ln3/r/a/b0;Ln3/v/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$l;->a:Ln3/v/u;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$l;->b:Ln3/r/a/b0;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$l;->c:Ln3/v/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$l;->b:Ln3/r/a/b0;

    invoke-interface {v0, p1, p2}, Ln3/r/a/b0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
