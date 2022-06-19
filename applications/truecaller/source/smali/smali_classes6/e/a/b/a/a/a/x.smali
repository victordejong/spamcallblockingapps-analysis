.class public final Le/a/b/a/a/a/x;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/q<",
        "Landroid/widget/CheckBox;",
        "Landroid/widget/Spinner;",
        "Landroid/widget/Spinner;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b/a/a/a/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/a/a/a/x;

    invoke-direct {v0}, Le/a/b/a/a/a/x;-><init>()V

    sput-object v0, Le/a/b/a/a/a/x;->b:Le/a/b/a/a/a/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/CheckBox;

    check-cast p2, Landroid/widget/Spinner;

    check-cast p3, Landroid/widget/Spinner;

    const-string v0, "chk"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openSpinner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeSpinner"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/b/a/a/a/w;

    invoke-direct {v0, p2, p3}, Le/a/b/a/a/a/w;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
