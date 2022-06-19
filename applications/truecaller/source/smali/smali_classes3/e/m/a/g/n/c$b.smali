.class public Le/m/a/g/n/c$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/n/c;


# direct methods
.method public constructor <init>(Le/m/a/g/n/c;Le/m/a/g/n/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/n/c$b;->a:Le/m/a/g/n/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/n/c$b;->a:Le/m/a/g/n/c;

    return-object v0
.end method
