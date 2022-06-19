.class public final Le/a/t3/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t3/c/c;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t3/c/c;


# direct methods
.method public constructor <init>(Le/a/t3/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/t3/c/c$a;->a:Le/a/t3/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/t3/c/c$a;->a:Le/a/t3/c/c;

    .line 2
    iget-object p1, p1, Le/a/t3/c/c;->c:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
