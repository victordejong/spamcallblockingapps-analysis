.class public Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final e:Le/m/a/g/u/c;


# instance fields
.field public a:Le/m/a/g/u/c;

.field public b:Le/m/a/g/u/c;

.field public c:Le/m/a/g/u/c;

.field public d:Le/m/a/g/u/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/a/g/u/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/m/a/g/u/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Le/m/a/g/u/c;

    return-void
.end method

.method public constructor <init>(Le/m/a/g/u/c;Le/m/a/g/u/c;Le/m/a/g/u/c;Le/m/a/g/u/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Le/m/a/g/u/c;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Le/m/a/g/u/c;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Le/m/a/g/u/c;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Le/m/a/g/u/c;

    return-void
.end method
