.class public final synthetic Le/a/e/c2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/w;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/e;->a:Le/a/e/c2/w;

    iput p2, p0, Le/a/e/c2/e;->b:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Le/a/e/c2/e;->a:Le/a/e/c2/w;

    iget p2, p0, Le/a/e/c2/e;->b:I

    .line 1
    invoke-virtual {p1, p2}, Le/a/e/c2/w;->a(I)V

    return-void
.end method
