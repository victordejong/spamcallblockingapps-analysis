.class public final Le/a/v/a/m0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/m0/e;->H(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/g;


# direct methods
.method public constructor <init>(Ln3/b/a/g;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/m0/e$b;->a:Ln3/b/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/v/a/m0/e$b;->a:Ln3/b/a/g;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
