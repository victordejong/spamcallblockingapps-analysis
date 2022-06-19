.class public final Le/f/a/n/q/h/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/h/g;


# direct methods
.method public constructor <init>(Le/f/a/n/q/h/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

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
    new-instance v0, Le/f/a/n/q/h/c;

    invoke-direct {v0, p0}, Le/f/a/n/q/h/c;-><init>(Le/f/a/n/q/h/c$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Le/f/a/n/q/h/c;

    invoke-direct {p1, p0}, Le/f/a/n/q/h/c;-><init>(Le/f/a/n/q/h/c$a;)V

    return-object p1
.end method
