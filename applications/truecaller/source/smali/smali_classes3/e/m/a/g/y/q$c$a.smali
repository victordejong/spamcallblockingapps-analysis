.class public Le/m/a/g/y/q$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/y/q$c;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Le/m/a/g/y/q$c;


# direct methods
.method public constructor <init>(Le/m/a/g/y/q$c;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/q$c$a;->b:Le/m/a/g/y/q$c;

    iput-object p2, p0, Le/m/a/g/y/q$c$a;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/y/q$c$a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Le/m/a/g/y/q$c$a;->b:Le/m/a/g/y/q$c;

    iget-object v1, v1, Le/m/a/g/y/q$c;->a:Le/m/a/g/y/q;

    .line 2
    iget-object v1, v1, Le/m/a/g/y/q;->d:Landroid/text/TextWatcher;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
