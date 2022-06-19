.class public Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MALWARE:I = 0x1

.field public static final PHISHING:I = 0x3


# instance fields
.field private urlCheckResult:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;->urlCheckResult:I

    return-void
.end method


# virtual methods
.method public getUrlCheckResult()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat;->urlCheckResult:I

    return v0
.end method
