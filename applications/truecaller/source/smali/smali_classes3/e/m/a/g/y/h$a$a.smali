.class public Le/m/a/g/y/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/y/h$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Le/m/a/g/y/h$a;


# direct methods
.method public constructor <init>(Le/m/a/g/y/h$a;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/h$a$a;->b:Le/m/a/g/y/h$a;

    iput-object p2, p0, Le/m/a/g/y/h$a$a;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/y/h$a$a;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/m/a/g/y/h$a$a;->b:Le/m/a/g/y/h$a;

    iget-object v1, v1, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    invoke-static {v1, v0}, Le/m/a/g/y/h;->g(Le/m/a/g/y/h;Z)V

    .line 3
    iget-object v1, p0, Le/m/a/g/y/h$a$a;->b:Le/m/a/g/y/h$a;

    iget-object v1, v1, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    .line 4
    iput-boolean v0, v1, Le/m/a/g/y/h;->i:Z

    return-void
.end method
