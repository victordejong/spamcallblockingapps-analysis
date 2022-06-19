.class public Ln3/y/e/c$a;
.super Ln3/y/e/f;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/c$a$a;,
        Ln3/y/e/c$a$b;
    }
.end annotation


# instance fields
.field public final g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ln3/y/e/c;Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, p1}, Ln3/y/e/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ln3/y/e/c$a;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Ln3/y/e/f$b;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/e/c$a$a;

    invoke-direct {v0, p0, p1}, Ln3/y/e/c$a$a;-><init>(Ln3/y/e/c$a;Landroid/content/Context;)V

    return-object v0
.end method
