.class public final Le/a/a0/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->dB(Landroid/widget/TextView;Landroid/widget/ImageView;Le/a/a0/a/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;

.field public final synthetic b:Le/a/a0/a/m;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;Le/a/a0/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/a/a$f;->a:Le/a/a0/a/a;

    iput-object p2, p0, Le/a/a0/a/a$f;->b:Le/a/a0/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a0/a/a$f;->a:Le/a/a0/a/a;

    invoke-virtual {p1}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object p1

    iget-object v0, p0, Le/a/a0/a/a$f;->b:Le/a/a0/a/m;

    check-cast p1, Le/a/a0/b;

    invoke-virtual {p1, v0}, Le/a/a0/b;->Mj(Le/a/a0/a/m;)V

    return-void
.end method
