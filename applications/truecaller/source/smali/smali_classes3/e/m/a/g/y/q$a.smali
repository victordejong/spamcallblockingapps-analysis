.class public Le/m/a/g/y/q$a;
.super Le/m/a/g/o/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/y/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/y/q;


# direct methods
.method public constructor <init>(Le/m/a/g/y/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/q$a;->a:Le/m/a/g/y/q;

    invoke-direct {p0}, Le/m/a/g/o/m;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/g/y/q$a;->a:Le/m/a/g/y/q;

    iget-object p2, p1, Le/m/a/g/y/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Le/m/a/g/y/q;->e(Le/m/a/g/y/q;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
