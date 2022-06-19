.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private D:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 12
    sget v0, Landroidx/preference/d;->b:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/c/g;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Landroidx/preference/g;->h:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Landroidx/preference/g;->r:I

    sget p3, Landroidx/preference/g;->i:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/c/g;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->D:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->D:Ljava/lang/CharSequence;

    .line 5
    :cond_0
    sget p2, Landroidx/preference/g;->q:I

    sget p3, Landroidx/preference/g;->j:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/c/g;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    .line 6
    sget p2, Landroidx/preference/g;->o:I

    sget p3, Landroidx/preference/g;->k:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/c/g;->c(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    .line 7
    sget p2, Landroidx/preference/g;->t:I

    sget p3, Landroidx/preference/g;->l:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/c/g;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    .line 8
    sget p2, Landroidx/preference/g;->s:I

    sget p3, Landroidx/preference/g;->m:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/c/g;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    .line 9
    sget p2, Landroidx/preference/g;->p:I

    sget p3, Landroidx/preference/g;->n:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/c/g;->n(Landroid/content/res/TypedArray;III)I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
